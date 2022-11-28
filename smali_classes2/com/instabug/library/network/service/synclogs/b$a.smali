.class Lcom/instabug/library/network/service/synclogs/b$a;
.super Ljava/lang/Object;
.source "SyncLogFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/service/synclogs/b;->a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/instabug/library/network/service/synclogs/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/service/synclogs/b;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/service/synclogs/b$a;->e:Lcom/instabug/library/network/service/synclogs/b;

    iput-object p2, p0, Lcom/instabug/library/network/service/synclogs/b$a;->a:[Ljava/io/File;

    iput-object p3, p0, Lcom/instabug/library/network/service/synclogs/b$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/instabug/library/network/service/synclogs/b$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/instabug/library/network/service/synclogs/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b$a;->e:Lcom/instabug/library/network/service/synclogs/b;

    invoke-static {v0}, Lcom/instabug/library/network/service/synclogs/b;->a(Lcom/instabug/library/network/service/synclogs/b;)Lcom/instabug/library/network/service/synclogs/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/b$a;->e:Lcom/instabug/library/network/service/synclogs/b;

    invoke-static {v0}, Lcom/instabug/library/network/service/synclogs/b;->a(Lcom/instabug/library/network/service/synclogs/b;)Lcom/instabug/library/network/service/synclogs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/network/service/synclogs/b$a;->a:[Ljava/io/File;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/network/service/synclogs/b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instabug/library/network/service/synclogs/b$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/instabug/library/network/service/synclogs/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instabug/library/network/service/synclogs/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error while syncing logs"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
