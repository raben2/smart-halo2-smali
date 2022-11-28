.class Lcom/instabug/library/c$g;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->g()V
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
    iput-object p1, p0, Lcom/instabug/library/c$g;->a:Lcom/instabug/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/c$g;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->g(Lcom/instabug/library/c;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/core/plugin/a;->b(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/n/a;->b()V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/c$g;->a:Lcom/instabug/library/c;

    invoke-virtual {v0}, Lcom/instabug/library/c;->f()V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/c$g;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->k(Lcom/instabug/library/c;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/c$g;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->l(Lcom/instabug/library/c;)V

    return-void
.end method
