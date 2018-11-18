# CodeBuild local

```
$ make
docker build -t codebuild .
Sending build context to Docker daemon	131.1kB
Step 1/2 : FROM amazon/aws-codebuild-local:latest
 ---> bec920270bf7
Step 2/2 : COPY local_build.sh /usr/local/bin/local_build.sh
 ---> Using cache
 ---> 516b2c6c9e8e
Successfully built 516b2c6c9e8e
Successfully tagged codebuild:latest
./codebuild.sh -i ubuntu:18.04 -a /tmp
Build Command:

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -e "IMAGE_NAME=ubuntu:18.04" -e "ARTIFACTS=/tmp" -e "SOURCE=/tmp/work/codebuild" codebuild:latest

Retry 1/3 to get agent ID
Removing agentresources_build_1 ...
Removing agentresources_agent_1 ...
Removing volume agentresources_user_volume
Removing volume agentresources_source_volume
Creating network "agentresources_default" with the default driver
Creating volume "agentresources_user_volume" with local driver
Creating volume "agentresources_source_volume" with local driver
Creating agentresources_agent_1 ...
Creating agentresources_agent_1
Creating agentresources_build_1
36magent_1  |0m [Container] 2018/11/18 13:39:05 Waiting for agent ping
36magent_1  |0m [Container] 2018/11/18 13:39:06 Waiting for DOWNLOAD_SOURCE
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase is DOWNLOAD_SOURCE
36magent_1  |0m [Container] 2018/11/18 13:39:07 CODEBUILD_SRC_DIR=/codebuild/output/src651210289/src
36magent_1  |0m [Container] 2018/11/18 13:39:07 YAML location is /codebuild/output/src651210289/src/buildspec.yml
36magent_1  |0m [Container] 2018/11/18 13:39:07 Processing environment variables
36magent_1  |0m [Container] 2018/11/18 13:39:07 Moving to directory /codebuild/output/src651210289/src
36magent_1  |0m [Container] 2018/11/18 13:39:07 Registering with agent
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phases found in YAML: 1
36magent_1  |0m [Container] 2018/11/18 13:39:07  BUILD: 1 commands
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase complete: DOWNLOAD_SOURCE Success: true
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase context status code:  Message:
36magent_1  |0m [Container] 2018/11/18 13:39:07 Entering phase INSTALL
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase complete: INSTALL Success: true
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase context status code:  Message:
36magent_1  |0m [Container] 2018/11/18 13:39:07 Entering phase PRE_BUILD
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase complete: PRE_BUILD Success: true
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase context status code:  Message:
36magent_1  |0m [Container] 2018/11/18 13:39:07 Entering phase BUILD
36magent_1  |0m [Container] 2018/11/18 13:39:07 Running command echo Build started on `date`
36magent_1  |0m Build started on Sun Nov 18 13:39:07 UTC 2018
36magent_1  |0m
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase complete: BUILD Success: true
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase context status code:  Message:
36magent_1  |0m [Container] 2018/11/18 13:39:07 Entering phase POST_BUILD
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase complete: POST_BUILD Success: true
36magent_1  |0m [Container] 2018/11/18 13:39:07 Phase context status code:  Message:
36magentresources_agent_1 exited with code 0
0mStopping agentresources_build_1 ...
done
```

