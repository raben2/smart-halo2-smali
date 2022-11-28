.class public Lcom/instabug/bug/view/reporting/g/a;
.super Lcom/instabug/bug/view/reporting/b;
.source "AskQuestionFragment.java"


# static fields
.field public static final A:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;-><init>()V

    return-void
.end method

.method public static g(Ljava/lang/String;)Lcom/instabug/bug/view/reporting/g/a;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/bug/view/reporting/g/a;

    invoke-direct {v0}, Lcom/instabug/bug/view/reporting/g/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bug_message"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected e()Lcom/instabug/bug/view/reporting/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/bug/view/reporting/g/b;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/g/b;-><init>(Lcom/instabug/bug/view/reporting/e;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget v0, Lcom/instabug/bug/R$string;->IBGAskQuestionHint:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lcom/instabug/bug/view/reporting/g/a;->A:Ljava/lang/String;

    const-string v1, "failed to provideDefaultHintMessage, fragment not attached yet"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/instabug/bug/R$string;->askAQuestionHeader:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/bug/view/reporting/g/a;->A:Ljava/lang/String;

    const-string v1, "failed to provideDefaultTitle, fragment not attached yet"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
