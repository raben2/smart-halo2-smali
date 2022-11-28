.class Lcom/instabug/featuresrequest/ui/custom/c$g$a;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/c$g;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/custom/c$g;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/c$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$g$a;->a:Lcom/instabug/featuresrequest/ui/custom/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$g$a;->a:Lcom/instabug/featuresrequest/ui/custom/c$g;

    iget-object v0, v0, Lcom/instabug/featuresrequest/ui/custom/c$g;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/instabug/featuresrequest/ui/custom/c;->b(Lcom/instabug/featuresrequest/ui/custom/c;I)V

    return-void
.end method
