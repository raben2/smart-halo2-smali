.class Lcom/instabug/apm/g/a$a;
.super Ljava/lang/Object;
.source "ActivityCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/g/a;->a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/common/Session;

.field final synthetic b:Lcom/instabug/apm/g/a;


# direct methods
.method constructor <init>(Lcom/instabug/apm/g/a;Lcom/instabug/library/model/common/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/g/a$a;->b:Lcom/instabug/apm/g/a;

    iput-object p2, p0, Lcom/instabug/apm/g/a$a;->a:Lcom/instabug/library/model/common/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/g/a$a;->b:Lcom/instabug/apm/g/a;

    invoke-static {v0}, Lcom/instabug/apm/g/a;->a(Lcom/instabug/apm/g/a;)Lcom/instabug/apm/b/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->i()Lcom/instabug/apm/f/a/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/g/a$a;->a:Lcom/instabug/library/model/common/Session;

    invoke-interface {v1}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/g/a$a;->b:Lcom/instabug/apm/g/a;

    invoke-static {v2}, Lcom/instabug/apm/g/a;->a(Lcom/instabug/apm/g/a;)Lcom/instabug/apm/b/b/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/f/a/a;->a(Ljava/lang/String;Lcom/instabug/apm/b/b/b;)J

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/g/a$a;->b:Lcom/instabug/apm/g/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/apm/g/a;->a(Lcom/instabug/apm/g/a;Lcom/instabug/apm/b/b/b;)Lcom/instabug/apm/b/b/b;

    :cond_0
    return-void
.end method
