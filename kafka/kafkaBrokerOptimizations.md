> ## Optimizations
>
> - Format the EBS with the XFS format as it to have better performance characteristics [source](https://archive.cloudera.com/kafka/kafka/2/kafka-0.10.0-kafka2.1.1/ops.html)
> - Use ```st1``` as the EBS type for better throughput [source](https://www.confluent.io/blog/design-and-deployment-considerations-for-deploying-apache-kafka-on-aws/)
> - Change the number of open file descriptor to a high number 
>  ```
>  soft nofile 50000 | sudo tee - append /etc/security/limits.conf
> ```
>  - Set the linux kernal parameter ` vm.swappiness` to 1. [source](https://docs.cloudera.com/cloudera-manager/7.2.2/managing-clusters/topics/cm-setting-vmswappiness-linux-kernel-parameter.html)
> 