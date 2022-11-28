.class Lcom/instabug/featuresrequest/ui/c/a$a;
.super Ljava/lang/Object;
.source "FeatureRequestsDetailsFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/custom/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/c/a;->getToolbarCloseActionButton()Lcom/instabug/featuresrequest/ui/custom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a$a;->a:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$a;->a:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/c/a;->a(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$a;->a:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/c/a;->b(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/c/d;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/c/d;->a()V

    :cond_0
    return-void
.end method
