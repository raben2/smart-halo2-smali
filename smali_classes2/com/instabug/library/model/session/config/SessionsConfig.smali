.class public Lcom/instabug/library/model/session/config/SessionsConfig;
.super Ljava/lang/Object;
.source "SessionsConfig.java"


# instance fields
.field private final maxSessionsPerRequest:I

.field private final syncIntervalsInMinutes:I

.field private final syncMode:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->syncIntervalsInMinutes:I

    .line 3
    iput p2, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->maxSessionsPerRequest:I

    .line 4
    iput p3, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->syncMode:I

    return-void
.end method

.method static createDefault()Lcom/instabug/library/model/session/config/SessionsConfig;
    .locals 4

    .line 1
    new-instance v0, Lcom/instabug/library/model/session/config/SessionsConfig;

    const/16 v1, 0x2d0

    const/16 v2, 0xa

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/instabug/library/model/session/config/SessionsConfig;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public getMaxSessionsPerRequest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->maxSessionsPerRequest:I

    return v0
.end method

.method public getSyncIntervalsInMinutes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->syncIntervalsInMinutes:I

    return v0
.end method

.method public getSyncMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->syncMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{syncIntervalsInMinutes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->syncIntervalsInMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionsPerRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->maxSessionsPerRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", syncMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/instabug/library/model/session/config/SessionsConfig;->syncMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
