# Pull base image
# ---------------
FROM wnameless/oracle-xe-11g

# Maintainer
# ----------
MAINTAINER hhayakawa_jp <charley.horse@outlook.com>

# Copy packages
# -------------
ADD jbatch /tmp/jbatch

# Create JobRepository
# -------------
RUN /tmp/jbatch/createJobRepository.sh repuser reppswd

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
