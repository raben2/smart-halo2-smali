.class public Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;
.super Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;
.source "RemoteDfuExtendedErrorException.java"


# static fields
.field private static final serialVersionUID:J = -0x5fc7dd8cc6605b16L


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0xb

    .line 36
    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p2, p0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;->mError:I

    return-void
.end method


# virtual methods
.method public getExtendedErrorNumber()I
    .locals 1

    .line 42
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;->mError:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (extended error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
