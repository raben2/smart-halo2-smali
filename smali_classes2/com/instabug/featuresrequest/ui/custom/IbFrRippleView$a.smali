.class Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;
.super Ljava/lang/Object;
.source "IbFrRippleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;->a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$a;->a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
