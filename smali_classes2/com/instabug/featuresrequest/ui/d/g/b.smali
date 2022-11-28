.class public Lcom/instabug/featuresrequest/ui/d/g/b;
.super Lcom/instabug/featuresrequest/ui/b/c/e;
.source "MainMyFeaturesFragment.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;-><init>()V

    return-void
.end method

.method public static c(Z)Lcom/instabug/featuresrequest/ui/d/g/b;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sort_by_top_voted"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "my_posts"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    new-instance p0, Lcom/instabug/featuresrequest/ui/d/g/b;

    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/d/g/b;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public I()Lcom/instabug/featuresrequest/ui/b/c/f;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/ui/d/g/c;

    new-instance v1, Lcom/instabug/featuresrequest/ui/b/b;

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/ui/d/g/a;->e()Lcom/instabug/featuresrequest/ui/d/g/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instabug/featuresrequest/ui/b/b;-><init>(Lcom/instabug/featuresrequest/ui/b/a;)V

    invoke-direct {v0, p0, v1}, Lcom/instabug/featuresrequest/ui/d/g/c;-><init>(Lcom/instabug/featuresrequest/ui/b/c/d;Lcom/instabug/featuresrequest/ui/b/b;)V

    return-object v0
.end method
