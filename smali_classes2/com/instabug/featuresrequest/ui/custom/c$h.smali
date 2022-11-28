.class Lcom/instabug/featuresrequest/ui/custom/c$h;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/custom/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$h;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$h;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->b(Lcom/instabug/featuresrequest/ui/custom/c;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$h;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->c(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->setOnLayoutChangeListener(Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout$b;)V

    return-void
.end method
