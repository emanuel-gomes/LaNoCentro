from flask_restful import Resource, marshal_with, reqparse, current_app, abort, marshal
from common.database import db
from sqlalchemy import exc
from models.contato import ContatoModel, contato_campos

parser = reqparse.RequestParser()
parser.add_argument('nome', required=True, help="Especifique um nome válido para o Contato.")
parser.add_argument('email', required=True, help="Especifique um email válido para o Contato.")
parser.add_argument('telefone', required=True, help="Especifique um telefone válido para o Contato.")
parser.add_argument('descricao', required=False, help="Especifique uma descrição válida para o Contato.")


class ContatosResource(Resource):
    # GET /contatos
    @marshal_with(contato_campos)
    def get(self):
        current_app.logger.info("Get - Contato")
        contatos = ContatoModel.query\
            .all()
        return contatos, 200

    # POST /contatos
    def post(self):
        current_app.logger.info("Post - Contato")
        try:
            # Parser JSON
            args = parser.parse_args()
            current_app.logger.info("Contato: %s:" % (args))

            # args
            nome = args['nome']
            email = args['email']
            telefone = args['telefone']
            descricao = args['descricao']

            endereco = ContatoModel(nome, email, telefone, descricao)

            # Criação do Contato.
            db.session.add(endereco)
            db.session.commit()

        except exc.SQLAlchemyError:
            current_app.logger.error("Exceção")
            return 500

        return 204


class ContatoResource(Resource):
    # GET /salas/<id>
    @marshal_with(contato_campos)
    def get(self, contato_id):
        current_app.logger.info("Get - Contato: %s" % contato_id)
        contato = ContatoModel.query.filter_by(id=contato_id).first()
        if contato is None:
            abort(404, message='Contato {} nao existe'.format(contato_id))

        return contato, 200

    # PUT /salas/<id>
    def put(self, contato_id):
        current_app.logger.info("Put - Contato: %s:" % contato_id)
        try:
            # Parser JSON
            args = parser.parse_args()
            current_app.logger.info("Contato: %s:" % (args))

            # args
            nome = args['nome']
            email = args['email']
            telefone = args['telefone']

            ContatoModel.query\
                .filter_by(id=contato_id)\
                .update(dict(nome = nome,
                            email = email,
                            telefone = telefone))
            db.session.commit()

        except exc.SQLAlchemyError:
            current_app.logger.error("Exceção")
            return 404

        return 204
