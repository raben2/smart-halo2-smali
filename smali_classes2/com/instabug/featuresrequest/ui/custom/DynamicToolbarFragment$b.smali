.class Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment$b;
.super Ljava/lang/Object;
.source "DynamicToolbarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->initToolbarViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/custom/f;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;Lcom/instabug/featuresrequest/ui/custom/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment$b;->a:Lcom/instabug/featuresrequest/ui/custom/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment$b;->a:Lcom/instabug/featuresrequest/ui/custom/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/custom/f;->b()Lcom/instabug/featuresrequest/ui/custom/f$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/custom/f$a;->a()V

    return-void
.end method
