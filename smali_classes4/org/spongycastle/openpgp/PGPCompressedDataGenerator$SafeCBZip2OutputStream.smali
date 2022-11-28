.class Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;
.super Lorg/spongycastle/apache/bzip2/CBZip2OutputStream;
.source "PGPCompressedDataGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeCBZip2OutputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Lorg/spongycastle/apache/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

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

    .line 219
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;->finish()V

    return-void
.end method
