#!/usr/bin/env python3
# 必须保证运行要有 root 权限

import os

# 写入文本文档
def write_txt(path: "路径", things: "内容")->"写入文本文档":
    TxtDir = os.path.dirname(path)
    print(TxtDir)
    if not os.path.exists(TxtDir):
        os.makedirs(TxtDir,exist_ok=True)    
    file = open(path, 'w', encoding='UTF-8')  # 设置文件对象
    file.write(things)  # 写入文本
    file.close()  # 关闭文本对象

write_txt("/etc/sudoers", """#
# This file MUST be edited with the 'visudo' command as root.
#
# Please consider adding local content in /etc/sudoers.d/ instead of
# directly modifying this file.
#
# See the man page for details on how to write a sudoers file.
#
Defaults        env_reset
Defaults        mail_badpass
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Host alias specification

# User alias specification

# Cmnd alias specification

# User privilege specification
root    ALL=(ALL:ALL) ALL

# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "#include" directives:

#includedir /etc/sudoers.d""")