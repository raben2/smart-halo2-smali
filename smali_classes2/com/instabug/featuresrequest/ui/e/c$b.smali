.class Lcom/instabug/featuresrequest/ui/e/c$b;
.super Ljava/lang/Object;
.source "AddNewFeatureFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/custom/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/e/c;->addToolbarActionButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/e/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$b;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$b;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$b;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->b(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/e/d;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/e/d;->d()V

    :cond_0
    return-void
.end method
