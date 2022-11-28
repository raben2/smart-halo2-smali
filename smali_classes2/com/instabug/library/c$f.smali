.class Lcom/instabug/library/c$f;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$f;->a:Lcom/instabug/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$f;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->g(Lcom/instabug/library/c;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->h()V

    .line 3
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/n/a;->c()V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/c$f;->a:Lcom/instabug/library/c;

    invoke-virtual {v0}, Lcom/instabug/library/c;->l()V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/c$f;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->h(Lcom/instabug/library/c;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/c$f;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->i(Lcom/instabug/library/c;)V

    return-void
.end method
