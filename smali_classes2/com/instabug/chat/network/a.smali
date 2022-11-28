.class public Lcom/instabug/chat/network/a;
.super Ljava/lang/Object;
.source "MessageUploaderHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/network/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/instabug/chat/e/b;)V
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START uploading all logs related to this chat id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/instabug/chat/network/c/a;->a()Lcom/instabug/chat/network/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/network/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/chat/network/a$d;

    invoke-direct {v2, p0, p1}, Lcom/instabug/chat/network/a$d;-><init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;Lcom/instabug/chat/e/b;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method private a(Lcom/instabug/chat/e/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attachments related to message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/instabug/chat/network/c/a;->a()Lcom/instabug/chat/network/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/network/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/chat/network/a$c;

    invoke-direct {v2, p0, p1}, Lcom/instabug/chat/network/a$c;-><init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/d;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/instabug/chat/network/c/a;->b(Landroid/content/Context;Lcom/instabug/chat/e/d;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/e/d;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getOfflineChats()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offline chats in cache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getOfflineChats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/b;

    .line 6
    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/chat/e/b$a;->READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading offline Chat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/chat/network/c/a;->a()Lcom/instabug/chat/network/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/chat/network/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v4

    new-instance v5, Lcom/instabug/chat/network/a$a;

    invoke-direct {v5, p0, v1}, Lcom/instabug/chat/network/a$a;-><init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/b;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;Lcom/instabug/library/model/State;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/chat/e/b$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent logs, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, v1}, Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/e/b;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offline messages in cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    .line 61
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v2

    sget-object v3, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SENT:Lcom/instabug/chat/e/d$c;

    if-ne v2, v3, :cond_0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/instabug/chat/network/c/a;->a()Lcom/instabug/chat/network/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/chat/network/a;->a:Landroid/content/Context;

    new-instance v4, Lcom/instabug/chat/network/a$b;

    invoke-direct {v4, p0, v1}, Lcom/instabug/chat/network/a$b;-><init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/d;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;Lcom/instabug/chat/e/d;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v2

    sget-object v3, Lcom/instabug/chat/e/d$c;->SENT:Lcom/instabug/chat/e/d$c;

    if-ne v2, v3, :cond_1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading message\'s attachments : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :try_start_0
    invoke-direct {p0, v1}, Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/e/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 126
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something went wrong while uploading message attachments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
