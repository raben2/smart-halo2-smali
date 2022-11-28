.class Lorg/spongycastle/openpgp/WrappedGeneratorStream;
.super Ljava/io/OutputStream;
.source "WrappedGeneratorStream.java"


# instance fields
.field private final _out:Ljava/io/OutputStream;

.field private final _sGen:Lorg/spongycastle/openpgp/StreamGenerator;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/StreamGenerator;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    .line 15
    iput-object p2, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_sGen:Lorg/spongycastle/openpgp/StreamGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_sGen:Lorg/spongycastle/openpgp/StreamGenerator;

    invoke-interface {v0}, Lorg/spongycastle/openpgp/StreamGenerator;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
