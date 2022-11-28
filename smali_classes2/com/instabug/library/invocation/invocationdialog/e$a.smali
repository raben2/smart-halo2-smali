.class Lcom/instabug/library/invocation/invocationdialog/e$a;
.super Ljava/lang/Object;
.source "InstabugDialogActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/invocationdialog/e;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/invocationdialog/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/invocationdialog/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/e$a;->a:Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/e$a;->a:Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-static {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->a(Lcom/instabug/library/invocation/invocationdialog/e;)Lcom/instabug/library/invocation/invocationdialog/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->finishActivity()V

    return-void
.end method
