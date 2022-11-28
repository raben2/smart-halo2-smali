.class public Lcom/instabug/apm/model/APMNetworkLog;
.super Ljava/lang/Object;
.source "APMNetworkLog.java"


# instance fields
.field private Carrier:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private executedInBackground:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private id:J

.field private method:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private networkLogHandler:Lcom/instabug/apm/f/c/a;

.field private radio:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestBodySize:J

.field private requestContentType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestHeaders:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private responseBodySize:J

.field private responseCode:I

.field private responseContentType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private responseHeaders:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startTime:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private totalDuration:J

.field private url:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->y()Lcom/instabug/apm/f/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->networkLogHandler:Lcom/instabug/apm/f/c/a;

    const-string v0, "network_log_thread_executor"

    .line 4
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->executor:Ljava/util/concurrent/Executor;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->id:J

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/apm/model/APMNetworkLog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->id:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/instabug/apm/model/APMNetworkLog;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->id:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/instabug/apm/model/APMNetworkLog;)Lcom/instabug/apm/f/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/model/APMNetworkLog;->networkLogHandler:Lcom/instabug/apm/f/c/a;

    return-object p0
.end method


# virtual methods
.method public executedInBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->executedInBackground:Z

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->Carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->id:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestBodySize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->requestBodySize:J

    return-wide v0
.end method

.method public getRequestContentType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->requestContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->requestHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBodySize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseBodySize:J

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseCode:I

    return v0
.end method

.method public getResponseContentType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->totalDuration:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->url:Ljava/lang/String;

    return-object v0
.end method

.method public insert()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/apm/model/APMNetworkLog$a;

    invoke-direct {v1, p0}, Lcom/instabug/apm/model/APMNetworkLog$a;-><init>(Lcom/instabug/apm/model/APMNetworkLog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->Carrier:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExecutedInBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->executedInBackground:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->id:J

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->method:Ljava/lang/String;

    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->radio:Ljava/lang/String;

    return-void
.end method

.method public setRequestBodySize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->requestBodySize:J

    return-void
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->requestContentType:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->requestHeaders:Ljava/lang/String;

    return-void
.end method

.method public setResponseBodySize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseBodySize:J

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseCode:I

    return-void
.end method

.method public setResponseContentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseContentType:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->responseHeaders:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->startTime:Ljava/lang/Long;

    return-void
.end method

.method public setTotalDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->totalDuration:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog;->url:Ljava/lang/String;

    return-void
.end method
