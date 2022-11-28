.class public Lorg/spongycastle/openpgp/examples/ByteArrayHandler;
.super Ljava/lang/Object;
.source "ByteArrayHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compress([BLjava/lang/String;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    new-instance v1, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {v1, p2}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    .line 162
    invoke-virtual {v1, v0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 164
    new-instance v2, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v2}, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    .line 168
    array-length p2, p0

    int-to-long v6, p2

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/16 v4, 0x62

    move-object v5, p1

    invoke-virtual/range {v2 .. v8}, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;JLjava/util/Date;)Ljava/io/OutputStream;

    move-result-object p1

    .line 175
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 178
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->close()V

    .line 180
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[C)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    invoke-static {v0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 65
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 72
    instance-of v1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    if-eqz v1, :cond_0

    .line 74
    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    :goto_0
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;

    .line 83
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;-><init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    const-string v1, "SC"

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->getDataStream(Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object p0

    .line 85
    new-instance p1, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 87
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPCompressedData;

    .line 89
    new-instance p1, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 91
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPLiteralData;

    .line 93
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([B[CLjava/lang/String;IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "_CONSOLE"

    :cond_0
    const/4 v0, 0x1

    .line 132
    invoke-static {p0, p2, v0}, Lorg/spongycastle/openpgp/examples/ByteArrayHandler;->compress([BLjava/lang/String;I)[B

    move-result-object p0

    .line 134
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p4, :cond_1

    .line 139
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 142
    :goto_0
    new-instance v1, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    new-instance v2, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-direct {v2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p3

    const-string v2, "SC"

    invoke-virtual {p3, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p3

    invoke-direct {v1, p3}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPDataEncryptorBuilder;)V

    .line 143
    new-instance p3, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    invoke-direct {p3, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;-><init>([C)V

    const-string p1, "SC"

    invoke-virtual {p3, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    .line 145
    array-length p1, p0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 155
    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    new-instance p0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {p0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string p0, "Dick Beck"

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "Hello world"

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 191
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Starting PGP test"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "iway"

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 192
    invoke-static {v0, p0, v1, v2, v3}, Lorg/spongycastle/openpgp/examples/ByteArrayHandler;->encrypt([B[CLjava/lang/String;IZ)[B

    move-result-object v1

    .line 194
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nencrypted data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    invoke-static {v1, p0}, Lorg/spongycastle/openpgp/examples/ByteArrayHandler;->decrypt([B[C)[B

    move-result-object v1

    .line 197
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ndecrypted data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "iway"

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 199
    invoke-static {v0, p0, v1, v2, v3}, Lorg/spongycastle/openpgp/examples/ByteArrayHandler;->encrypt([B[CLjava/lang/String;IZ)[B

    move-result-object v0

    .line 201
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nencrypted data = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    invoke-static {v0, p0}, Lorg/spongycastle/openpgp/examples/ByteArrayHandler;->decrypt([B[C)[B

    move-result-object p0

    .line 204
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndecrypted data = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
