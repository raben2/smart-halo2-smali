.class Lcom/instabug/apm/f/e/e/b$a;
.super Ljava/lang/Object;
.source "AutomaticUiTraceHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/f/e/e/b;->c(Lcom/instabug/apm/b/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/b/b/f;

.field final synthetic b:Lcom/instabug/apm/f/e/e/b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/f/e/e/b;Lcom/instabug/apm/b/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    iput-object p2, p0, Lcom/instabug/apm/f/e/e/b$a;->a:Lcom/instabug/apm/b/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->J()Lcom/instabug/apm/b/a/e/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    iget-object v1, v1, Lcom/instabug/apm/f/e/e/b;->h:Lcom/instabug/apm/f/d/c;

    invoke-interface {v1}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    iget-object v1, v1, Lcom/instabug/apm/f/e/e/b;->h:Lcom/instabug/apm/f/d/c;

    .line 3
    invoke-interface {v1}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget-object v2, p0, Lcom/instabug/apm/f/e/e/b$a;->a:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v2, v1}, Lcom/instabug/apm/b/b/f;->f(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/instabug/apm/f/e/e/b$a;->a:Lcom/instabug/apm/b/b/f;

    invoke-interface {v0, v2}, Lcom/instabug/apm/b/a/e/a;->a(Lcom/instabug/apm/b/b/f;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 8
    iget-object v2, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    iget-object v2, v2, Lcom/instabug/apm/f/e/e/b;->i:Lcom/instabug/apm/b/a/d/c;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 9
    invoke-interface {v2, v1, v3}, Lcom/instabug/apm/b/a/d/c;->d(Ljava/lang/String;I)V

    .line 10
    iget-object v2, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    .line 11
    invoke-static {v2}, Lcom/instabug/apm/f/e/e/b;->a(Lcom/instabug/apm/f/e/e/b;)Lcom/instabug/apm/c/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/instabug/apm/c/c;->n()J

    move-result-wide v2

    .line 12
    invoke-interface {v0, v1, v2, v3}, Lcom/instabug/apm/b/a/e/a;->a(Ljava/lang/String;J)I

    move-result v2

    if-lez v2, :cond_1

    .line 15
    iget-object v3, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    iget-object v3, v3, Lcom/instabug/apm/f/e/e/b;->i:Lcom/instabug/apm/b/a/d/c;

    invoke-interface {v3, v1, v2}, Lcom/instabug/apm/b/a/d/c;->c(Ljava/lang/String;I)V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    invoke-static {v1}, Lcom/instabug/apm/f/e/e/b;->a(Lcom/instabug/apm/f/e/e/b;)Lcom/instabug/apm/c/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instabug/apm/c/c;->x()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/b/a/e/a;->a(J)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    invoke-static {v0}, Lcom/instabug/apm/f/e/e/b;->b(Lcom/instabug/apm/f/e/e/b;)Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    const-string v1, "Session meta data was not updated. Failed to save UITrace"

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b$a;->b:Lcom/instabug/apm/f/e/e/b;

    invoke-static {v0}, Lcom/instabug/apm/f/e/e/b;->b(Lcom/instabug/apm/f/e/e/b;)Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    const-string v1, "UITrace was not inserted. APM session is null"

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
