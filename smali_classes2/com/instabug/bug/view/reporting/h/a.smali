.class public Lcom/instabug/bug/view/reporting/h/a;
.super Lcom/instabug/bug/view/reporting/b;
.source "BugReportingFragment.java"


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

.method public static g(Ljava/lang/String;)Lcom/instabug/bug/view/reporting/h/a;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/bug/view/reporting/h/a;

    invoke-direct {v0}, Lcom/instabug/bug/view/reporting/h/a;-><init>()V

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
    new-instance v0, Lcom/instabug/bug/view/reporting/h/b;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/h/b;-><init>(Lcom/instabug/bug/view/reporting/e;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 5
    sget v0, Lcom/instabug/bug/R$string;->IBGReportBugHint:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/instabug/bug/R$string;->IBGPromptOptionsReportBug:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
