.class Lcom/instabug/featuresrequest/ui/d/c$a;
.super Ljava/lang/Object;
.source "FeaturesMainFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/custom/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/d/c;->getToolbarCloseActionButton()Lcom/instabug/featuresrequest/ui/custom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$a;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c$a;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/d/c;->a(Lcom/instabug/featuresrequest/ui/d/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c$a;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/d/c;->b(Lcom/instabug/featuresrequest/ui/d/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/d/d;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/d/d;->b()V

    :cond_0
    return-void
.end method
