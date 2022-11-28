.class Lcom/instabug/apm/f/d/d$b$a$a;
.super Ljava/lang/Object;
.source "SessionHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/f/d/d$b$a;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/f/d/d$b$a;


# direct methods
.method constructor <init>(Lcom/instabug/apm/f/d/d$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->b(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/a/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    iget-object v2, v2, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v2, v2, Lcom/instabug/apm/f/d/d$b;->a:Lcom/instabug/library/model/common/Session;

    invoke-interface {v1, v2}, Lcom/instabug/apm/b/a/d/a;->a(Lcom/instabug/library/model/common/Session;)Lcom/instabug/apm/b/b/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;Lcom/instabug/apm/b/b/d;)Lcom/instabug/apm/b/b/d;

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    iget-object v1, v1, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v1, v1, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v1}, Lcom/instabug/apm/f/d/d;->b(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/a/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/f/d/d$b$a$a;->a:Lcom/instabug/apm/f/d/d$b$a;

    iget-object v2, v2, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v2, v2, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instabug/apm/b/a/d/a;->b(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/apm/f/d/e;->a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V

    :cond_0
    return-void
.end method
