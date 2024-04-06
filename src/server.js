const Hapi = require('@hapi/hapi');
const routes = require('./routes');

const init = async () => {
  const NODE_ENV =
    process.env.NODE_ENV === 'production' ? '0.0.0.0' : 'localhost';
  const server = Hapi.server({
    port: 5000,
    host: NODE_ENV,
    routes: {
      cors: {
        origin: ['*'],
      },
    },
  });

  console.log(process.env.NODE_ENV);
  server.route(routes);

  await server.start();
  console.log(`Server berjalan pada ${server.info.uri}`);
};

init();

