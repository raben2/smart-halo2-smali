.class Lcom/instabug/bug/view/h/c$a;
.super Ljava/lang/Object;
.source "ExtraFieldsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/h/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/h/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/h/c$a;->a:Lcom/instabug/bug/view/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/view/e;->b()Lcom/instabug/bug/view/e;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/instabug/bug/view/h/c$a;->a:Lcom/instabug/bug/view/h/c;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/instabug/bug/view/h/c$a;->a:Lcom/instabug/bug/view/h/c;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Instabug-Thanks-Fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/h/c$a;->a:Lcom/instabug/bug/view/h/c;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->finishActivity()V

    :cond_1
    :goto_0
    return-void
.end method
