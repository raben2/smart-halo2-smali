.class public Lbike/smarthalo/sdk/models/TransceiveTask;
.super Ljava/lang/Object;
.source "TransceiveTask.java"


# instance fields
.field public allowRetry:Z

.field public cb:Lbike/smarthalo/sdk/models/TransceiveCallback;

.field public createdAt:J

.field public crypted:I

.field public currentSendPayloadIndex:I

.field public description:Ljava/lang/String;

.field public receivedDataAt:J

.field public recvPayloads:Ljava/io/ByteArrayOutputStream;

.field public retryCount:I

.field public sendLen:I

.field public sendPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public sentAt:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    return-void
.end method
