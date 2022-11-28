.class Lcom/instabug/library/ui/onboarding/c$a;
.super Ljava/lang/Object;
.source "OnBoardingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/ui/onboarding/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/ui/onboarding/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/ui/onboarding/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/ui/onboarding/c$a;->a:Lcom/instabug/library/ui/onboarding/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/c$a;->a:Lcom/instabug/library/ui/onboarding/c;

    invoke-static {v0}, Lcom/instabug/library/ui/onboarding/c;->a(Lcom/instabug/library/ui/onboarding/c;)Lcom/instabug/library/ui/onboarding/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/ui/onboarding/b;->dismiss()V

    return-void
.end method
