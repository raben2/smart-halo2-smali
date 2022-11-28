.class Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;
.super Lorg/spongycastle/bcpg/BCPGOutputStream;
.source "PGPEncryptedDataGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClosableBCPGOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    .line 390
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;IJ)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;IJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move v5, p6

    .line 384
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;IJZ)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    .line 378
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->finish()V

    return-void
.end method
