#!/bin/bash

# Install location for conf and co
INSTALL_LOCATION="/opt/server-report"

# Specify folder for binary
LINK_TO="/usr/local/sbin"

# Require root
if [ "$(whoami)" != "root" ]; then
        echo "ERROR Install script must be run as root"
        exit -1
fi

echo "Starting ServerReport installer ..."


echo "Creating install location at $INSTALL_LOCATION ..."
mkdir -p $INSTALL_LOCATION


# Find __ARCHIVE__ maker, read archive content and decompress it
ARCHIVE=$(awk '/^__ARCHIVE__/ {print NR + 1; exit 0; }' "${0}")
tail -n+${ARCHIVE} "${0}" | tar xpJ -C ${INSTALL_LOCATION}


echo "Creating plugins folder, if not already present ..."
mkdir -p $INSTALL_LOCATION/plugins


echo "Set owner to root and prevent regular users from changing/reading in install folder ..."
chown -R root:root $INSTALL_LOCATION
chmod -R 770 $INSTALL_LOCATION


# Create symlink
echo "Linking report script to $LINK_TO ..."
ln -sf /opt/server-report/run.sh $LINK_TO/report


# Exit before marker
echo -e "\nDone."
exit 0


__ARCHIVE__
�7zXZ  �ִF !   t/��'�g] 9I���I�G����")�N�B�.ݯ�3R���W�*��!a���X{�zJ��b�%Mᬀ����R���%����O��:�s�I ��(��ab�q��D�.?���oB
8�S��2�g~����ȳ�^������Q�NC���1-h=:�K%�����%l�Y�&�5�u��1����"Lz�X�N=�����%H)�+ɘh)�����E7И��f��0��h��V�}!��:v�M~Ip{�-�׊Sn�5��B'��&�N���y �\ߟ"�j7%m gD����F<� _�D[MO:�1,��Y�{����o{�X.<C��ٮ�ڭ�|�7~^୔K�����O���������Lt�6��!�h���$K���Y���(d�X����
��
���&am�Rl�9�~O��2@bk|?��q6�����`@r�X5�Z�s�)���IZ��Cӊu#�@�,���8ZU�!�%���[8������"��H'8�<?�m�ZޱB"��@/�'��En�I��Ą힄Qq��R�������5�v���3����zAc&_��ѐ��̠y0����=�k0��7��!J1��G�����M��j��nM�S�{�f9�_�W��^}!~���;����􆘪��(b�7�M(�B�gKOm��&���l6ϱ�[�\��<4��.*L&�0��6+H���o�(X�I�D�H����ҊsS^&��Ek��ދV�q��S���Z���j����/��,5_��Dk���I�5o�i#�~5k ���$,ԇ�Og�N��Y�V�o򱬔�hRG��{'ӿu����9�
&^�JS9�2 ����l'zOj��Fz,�i?B�:�b��ӱ��+d��rKtC�^-��Q�v�4�'0W�����P|�����շ��+��O��=&7HXV�Ax�\�L�m7�_�.�8���=t�n�:��l�6�ι�����U����y�"�.�`��^!�OW��<Z?�����a
% M����=����Ė	E��x�X�A��A�
|��q��y`���4{��ωd��B>p�C�8j��pS6��K7�y��*�ӓ#N&g{Lt\\hy��F_�jp�����i����f����H�o&��+iJ+	�	�++1ݫ~�T��0;�O��4��j��N���>@8������E����H�>���%�nYJ��9�Yx���ۇkz%m1;'V�+F/��R]����	n��Aq�I�C=1	Xn��~��&_���j��$�}�4�=_X�F��	���k۱���s0kܲ��H3F��o��L~��o2�R}u9��]�F<�sy3�i���z5��   ���Y�Y ��P  1D���g�    YZ