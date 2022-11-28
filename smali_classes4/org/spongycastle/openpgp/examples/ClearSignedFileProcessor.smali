.class public Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;
.super Ljava/lang/Object;
.source "ClearSignedFileProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLengthWithoutSeparatorOrTrailingWhitespace([B)I
    .locals 2

    .line 333
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 335
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->isWhiteSpace(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getLengthWithoutWhiteSpace([B)I
    .locals 2

    .line 350
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 352
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->isWhiteSpace(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getLineSeparator()[B
    .locals 4

    .line 206
    invoke-static {}, Lorg/spongycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 209
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static isLineEnding(B)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    .line 362
    invoke-static {p0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->isLineEnding(B)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x0

    .line 371
    aget-object v1, p0, v0

    const-string v2, "-s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 373
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p0, v2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".asc"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 376
    array-length v2, p0

    const/4 v5, 0x3

    if-ne v2, v3, :cond_0

    .line 378
    aget-object v2, p0, v4

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v3, "SHA1"

    invoke-static {v2, v0, v1, p0, v3}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CLjava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    aget-object v2, p0, v4

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-object p0, p0, v3

    invoke-static {v2, v0, v1, v4, p0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CLjava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_1
    aget-object v1, p0, v0

    const-string v5, "-v"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    aget-object v1, p0, v4

    const-string v5, ".asc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 389
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "file needs to end in \".asc\""

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 392
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v5, p0, v4

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 393
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v2, p0, v2

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 395
    aget-object v5, p0, v4

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v5, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: ClearSignedFileProcessor [-s file keyfile passPhrase]|[-v sigFile keyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static processLine(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/PGPSignatureGenerator;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-static {p2}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutWhiteSpace([B)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 325
    invoke-virtual {p1, p2, v1, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    .line 328
    :cond_0
    array-length p1, p2

    invoke-virtual {p0, p2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static processLine(Lorg/spongycastle/openpgp/PGPSignature;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutWhiteSpace([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update([BII)V

    :cond_0
    return-void
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, p1

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    invoke-static {p0, v0, p2}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readPassedEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p1

    :goto_1
    if-gez v0, :cond_3

    const/4 p1, -0x1

    :cond_3
    return p1
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    .line 57
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 60
    :cond_1
    invoke-static {p0, v0, p1}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readPassedEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static readPassedEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    const/16 p1, 0xa

    if-ne v0, p1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "SHA256"

    .line 230
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 p4, 0x8

    goto :goto_0

    :cond_0
    const-string v0, "SHA384"

    .line 234
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p4, 0x9

    goto :goto_0

    :cond_1
    const-string v0, "SHA512"

    .line 238
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p4, 0xa

    goto :goto_0

    :cond_2
    const-string v0, "MD5"

    .line 242
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p4, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "RIPEMD160"

    .line 246
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x3

    goto :goto_0

    :cond_4
    const/4 p4, 0x2

    .line 255
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->readSecretKey(Ljava/io/InputStream;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object p1

    .line 256
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v3, "SC"

    invoke-virtual {v0, v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/spongycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p3

    .line 257
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;

    new-instance v3, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v4

    invoke-direct {v3, v4, p4}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    const-string v4, "SC"

    invoke-virtual {v3, v4}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V

    .line 258
    new-instance v3, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {v3}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    .line 260
    invoke-virtual {v0, v2, p3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V

    .line 262
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object p1

    .line 263
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p3, p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignerUserID(ZLjava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 269
    :cond_5
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 270
    new-instance p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    invoke-virtual {p0, p4}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->beginClearText(I)V

    .line 277
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    invoke-static {p2, p1}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result p3

    .line 280
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-static {p0, v0, p4}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/PGPSignatureGenerator;[B)V

    const/4 p4, -0x1

    if-eq p3, p4, :cond_7

    .line 286
    :cond_6
    invoke-static {p2, p3, p1}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p3

    const/16 v2, 0xd

    .line 288
    invoke-virtual {v0, v2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 289
    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 291
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/PGPSignatureGenerator;[B)V

    if-ne p3, p4, :cond_6

    .line 296
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 298
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->endClearText()V

    .line 300
    new-instance p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {p1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 302
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->close()V

    return-void
.end method

.method private static verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    invoke-static {v1, v0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result v2

    .line 129
    invoke-static {}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->getLineSeparator()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 131
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 134
    invoke-static {v6}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutSeparatorOrTrailingWhitespace([B)I

    move-result v7

    invoke-virtual {p0, v6, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    if-eq v2, v5, :cond_1

    .line 137
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    invoke-static {v1, v2, v0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v2

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 142
    invoke-static {v6}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutSeparatorOrTrailingWhitespace([B)I

    move-result v7

    invoke-virtual {p0, v6, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 143
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    if-eq v2, v5, :cond_1

    .line 151
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 152
    invoke-static {v2}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->getLengthWithoutSeparatorOrTrailingWhitespace([B)I

    move-result v6

    invoke-virtual {p0, v2, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 159
    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;

    new-instance v2, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 161
    new-instance p1, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 162
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/openpgp/PGPSignatureList;

    .line 163
    invoke-virtual {p1, v4}, Lorg/spongycastle/openpgp/PGPSignatureList;->get(I)Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    .line 166
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v2, "SC"

    invoke-virtual {v0, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSignature;->init(Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 172
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    invoke-static {v1, p0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result p2

    .line 176
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Lorg/spongycastle/openpgp/PGPSignature;[B)V

    if-eq p2, v5, :cond_3

    .line 182
    :cond_2
    invoke-static {v1, p2, p0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result p2

    const/16 v0, 0xd

    .line 184
    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    const/16 v0, 0xa

    .line 185
    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    .line 187
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/openpgp/examples/ClearSignedFileProcessor;->processLine(Lorg/spongycastle/openpgp/PGPSignature;[B)V

    if-ne p2, v5, :cond_2

    .line 192
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 194
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignature;->verify()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 196
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verified."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verification failed."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
