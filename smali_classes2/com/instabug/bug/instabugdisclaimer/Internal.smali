.class public Lcom/instabug/bug/instabugdisclaimer/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setDisclaimerText(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/bug/instabugdisclaimer/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static setup()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/bug/instabugdisclaimer/a;->a()V

    return-void
.end method
