FROM public.ecr.aws/lambda/nodejs:12
COPY . ${LAMBDA_TASK_ROOT}
RUN npm install
CMD [ "app.handler" ]