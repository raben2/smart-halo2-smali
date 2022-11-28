.class public Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;
.super Ljava/lang/Object;
.source "TlsExtensionsUtils.java"


# static fields
.field public static final EXT_encrypt_then_mac:Ljava/lang/Integer;

.field public static final EXT_extended_master_secret:Ljava/lang/Integer;

.field public static final EXT_heartbeat:Ljava/lang/Integer;

.field public static final EXT_max_fragment_length:Ljava/lang/Integer;

.field public static final EXT_padding:Ljava/lang/Integer;

.field public static final EXT_server_name:Ljava/lang/Integer;

.field public static final EXT_status_request:Ljava/lang/Integer;

.field public static final EXT_truncated_hmac:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    .line 12
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    const/16 v0, 0x17

    .line 13
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    const/16 v0, 0xf

    .line 14
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    const/16 v0, 0x15

    .line 16
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    const/4 v0, 0x5

    .line 18
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 19
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEncryptThenMACExtension(Ljava/util/Hashtable;)V
    .locals 2

    .line 28
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEncryptThenMACExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V
    .locals 2

    .line 33
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createExtendedMasterSecretExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addHeartbeatExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/HeartbeatExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createHeartbeatExtension(Lorg/spongycastle/crypto/tls/HeartbeatExtension;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addMaxFragmentLengthExtension(Ljava/util/Hashtable;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createMaxFragmentLengthExtension(S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addPaddingExtension(Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createPaddingExtension(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addServerNameExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/ServerNameList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createServerNameExtension(Lorg/spongycastle/crypto/tls/ServerNameList;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addStatusRequestExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/CertificateStatusRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createStatusRequestExtension(Lorg/spongycastle/crypto/tls/CertificateStatusRequest;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addTruncatedHMacExtension(Ljava/util/Hashtable;)V
    .locals 2

    .line 68
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createTruncatedHMacExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createEmptyExtensionData()[B
    .locals 1

    .line 126
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public static createEncryptThenMACExtension()[B
    .locals 1

    .line 131
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createExtendedMasterSecretExtension()[B
    .locals 1

    .line 136
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createHeartbeatExtension(Lorg/spongycastle/crypto/tls/HeartbeatExtension;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->encode(Ljava/io/OutputStream;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createMaxFragmentLengthExtension(S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(S)V

    const/4 v0, 0x1

    .line 159
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 160
    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    return-object v0
.end method

.method public static createPaddingExtension(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 168
    new-array p0, p0, [B

    return-object p0
.end method

.method public static createServerNameExtension(Lorg/spongycastle/crypto/tls/ServerNameList;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 179
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/ServerNameList;->encode(Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 176
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createStatusRequestExtension(Lorg/spongycastle/crypto/tls/CertificateStatusRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 194
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->encode(Ljava/io/OutputStream;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static createTruncatedHMacExtension()[B
    .locals 1

    .line 203
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static getHeartbeatExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readHeartbeatExtension([B)Lorg/spongycastle/crypto/tls/HeartbeatExtension;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readMaxFragmentLengthExtension([B)S

    move-result p0

    :goto_0
    return p0
.end method

.method public static getPaddingExtension(Ljava/util/Hashtable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readPaddingExtension([B)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getServerNameExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/ServerNameList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readServerNameExtension([B)Lorg/spongycastle/crypto/tls/ServerNameList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getStatusRequestExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readStatusRequestExtension([B)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEncryptThenMACExtension([B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readExtendedMasterSecretExtension([B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readTruncatedHMacExtension([B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static readEmptyExtensionData([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 213
    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 215
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 210
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readEncryptThenMACExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readExtendedMasterSecretExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method

.method public static readHeartbeatExtension([B)Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 239
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 241
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/HeartbeatExtension;

    move-result-object p0

    .line 243
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    .line 236
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readMaxFragmentLengthExtension([B)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 256
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 261
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result p0

    return p0

    .line 258
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 253
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readPaddingExtension([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 271
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 273
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 278
    :cond_1
    array-length p0, p0

    return p0

    .line 269
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readServerNameExtension([B)Lorg/spongycastle/crypto/tls/ServerNameList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 289
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 291
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/ServerNameList;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerNameList;

    move-result-object p0

    .line 293
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    .line 286
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readStatusRequestExtension([B)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 306
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 308
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;

    move-result-object p0

    .line 310
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readTruncatedHMacExtension([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result p0

    return p0
.end method
