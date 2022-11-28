.class public Lcom/instabug/bug/network/b;
.super Ljava/lang/Object;
.source "BugsService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# static fields
.field private static c:Lcom/instabug/bug/network/b;


# instance fields
.field private a:Lcom/instabug/library/network/NetworkManager;

.field b:Lcom/instabug/library/network/Request;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    return-void
.end method

.method public static a()Lcom/instabug/bug/network/b;
    .locals 3

    .line 1
    const-class v0, Lcom/instabug/bug/network/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/instabug/bug/network/b;->c:Lcom/instabug/bug/network/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/bug/network/b;

    invoke-direct {v1}, Lcom/instabug/bug/network/b;-><init>()V

    sput-object v1, Lcom/instabug/bug/network/b;->c:Lcom/instabug/bug/network/b;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/instabug/bug/network/b;->a(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V

    .line 6
    :cond_0
    sget-object v1, Lcom/instabug/bug/network/b;->c:Lcom/instabug/bug/network/b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/instabug/bug/model/a;)Lcom/instabug/library/network/Request;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->BUG_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":bug_token"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_0
    invoke-virtual {p1, v0}, Lcom/instabug/library/network/Request;->setEndpoint(Ljava/lang/String;)V

    .line 34
    :cond_1
    invoke-virtual {p2}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getLogsItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/State$StateItem;

    .line 37
    invoke-virtual {v1}, Lcom/instabug/library/model/State$StateItem;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/instabug/library/model/State$StateItem;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {v1}, Lcom/instabug/library/model/State$StateItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instabug/library/model/State$StateItem;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :cond_4
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->j()Ljava/lang/String;

    move-result-object p2

    const-string v0, "view_hierarchy"

    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)Lio/reactivex/Observer;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Observer<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/instabug/bug/network/b$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/instabug/bug/network/b$a;-><init>(Lcom/instabug/bug/network/b;Lcom/instabug/library/network/Request$Callbacks;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/bug/model/a;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting a bug with message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugsService"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/instabug/bug/network/b;->b(Landroid/content/Context;Lcom/instabug/bug/model/a;)Lcom/instabug/library/network/Request;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/bug/network/b;->b:Lcom/instabug/library/network/Request;

    .line 13
    iget-object v0, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p2}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/instabug/bug/network/b;->a(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)Lio/reactivex/Observer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V
    .locals 1
    .param p1    # Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->setOnDoRequestListener(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V

    return-void
.end method

.method a(Lcom/instabug/library/network/Request;Lcom/instabug/bug/model/a;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-virtual {p2}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/model/State;->getStateItems()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/State$StateItem;

    invoke-virtual {v1}, Lcom/instabug/library/model/State$StateItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/State$StateItem;

    invoke-virtual {v2}, Lcom/instabug/library/model/State$StateItem;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bug State Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Bug State value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BugsService"

    invoke-static {v4, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Landroid/content/Context;Lcom/instabug/bug/model/a;)Lcom/instabug/library/network/Request;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->REPORT_BUG:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/network/b;->b:Lcom/instabug/library/network/Request;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/instabug/bug/network/b;->a(Lcom/instabug/library/network/Request;Lcom/instabug/bug/model/a;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/bug/network/b;->b:Lcom/instabug/library/network/Request;

    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/bug/network/b;->b:Lcom/instabug/library/network/Request;

    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "attachments_count"

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/bug/network/b;->b:Lcom/instabug/library/network/Request;

    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "categories"

    invoke-virtual {p1, v0, p2}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/bug/network/b;->b:Lcom/instabug/library/network/Request;

    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/bug/model/a;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/Boolean;",
            "Lcom/instabug/bug/model/a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "BugsService"

    const-string v1, "Uploading Bug attachments"

    .line 10
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/instabug/bug/network/b;->c(Landroid/content/Context;Lcom/instabug/bug/model/a;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0}, Lio/reactivex/Observable;->merge(Ljava/lang/Iterable;I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/bug/network/b$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/instabug/bug/network/b$b;-><init>(Lcom/instabug/bug/network/b;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method c(Landroid/content/Context;Lcom/instabug/bug/model/a;)Ljava/util/ArrayList;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/bug/model/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 6
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    .line 8
    invoke-static {v2}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->decryptAttachmentAndUpdateDb(Lcom/instabug/library/model/Attachment;)Z

    move-result v3

    .line 9
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 10
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-lez v9, :cond_3

    .line 12
    iget-object v3, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v4, Lcom/instabug/library/network/Request$Endpoint;->ADD_BUG_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v5, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    sget-object v6, Lcom/instabug/library/network/NetworkManager$RequestType;->MULTI_PART:Lcom/instabug/library/network/NetworkManager$RequestType;

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/NetworkManager$RequestType;)Lcom/instabug/library/network/Request;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->h()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":bug_token"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    :cond_0
    invoke-virtual {v3, v4}, Lcom/instabug/library/network/Request;->setEndpoint(Ljava/lang/String;)V

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v4

    const-string v5, "metadata[file_type]"

    invoke-virtual {v3, v5, v4}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 22
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v4

    sget-object v5, Lcom/instabug/library/model/Attachment$Type;->AUDIO:Lcom/instabug/library/model/Attachment$Type;

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getDuration()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getDuration()Ljava/lang/String;

    move-result-object v4

    const-string v5, "metadata[duration]"

    invoke-virtual {v3, v5, v4}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 26
    :cond_2
    sget-object v4, Lcom/instabug/library/model/Attachment$AttachmentState;->SYNCED:Lcom/instabug/library/model/Attachment$AttachmentState;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment;->setAttachmentState(Lcom/instabug/library/model/Attachment$AttachmentState;)Lcom/instabug/library/model/Attachment;

    .line 27
    new-instance v4, Lcom/instabug/library/network/Request$FileToUpload;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getFileType()Ljava/lang/String;

    move-result-object v2

    const-string v7, "file"

    invoke-direct {v4, v7, v5, v6, v2}, Lcom/instabug/library/network/Request$FileToUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/instabug/library/network/Request;->setFileToUpload(Lcom/instabug/library/network/Request$FileToUpload;)Lcom/instabug/library/network/Request;

    .line 28
    iget-object v2, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v2, v3}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping attachment file of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it was not decrypted successfully"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugsService"

    .line 33
    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-gtz v7, :cond_6

    .line 36
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping attachment file of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it\'s either not found or empty file"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugsService"

    .line 38
    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public c(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/bug/model/a;",
            "Lcom/instabug/library/network/Request$Callbacks<",
            "Ljava/lang/Boolean;",
            "Lcom/instabug/bug/model/a;",
            ">;)V"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/instabug/bug/network/b;->a(Landroid/content/Context;Lcom/instabug/bug/model/a;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/instabug/bug/network/b;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/bug/network/b$c;

    invoke-direct {v0, p0, p3, p2}, Lcom/instabug/bug/network/b$c;-><init>(Lcom/instabug/bug/network/b;Lcom/instabug/library/network/Request$Callbacks;Lcom/instabug/bug/model/a;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BugsService"

    const-string v1, "uploading bug logs got Json error "

    .line 67
    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-interface {p3, p2}, Lcom/instabug/library/network/Request$Callbacks;->onFailed(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
