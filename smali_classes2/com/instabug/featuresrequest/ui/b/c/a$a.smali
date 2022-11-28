.class Lcom/instabug/featuresrequest/ui/b/c/a$a;
.super Ljava/lang/Object;
.source "FeatureAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/b/c/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instabug/featuresrequest/ui/b/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/a$a;->b:Lcom/instabug/featuresrequest/ui/b/c/a;

    iput p2, p0, Lcom/instabug/featuresrequest/ui/b/c/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/a$a;->b:Lcom/instabug/featuresrequest/ui/b/c/a;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/b/c/a;->a(Lcom/instabug/featuresrequest/ui/b/c/a;)Lcom/instabug/featuresrequest/c/a;

    move-result-object p1

    iget v0, p0, Lcom/instabug/featuresrequest/ui/b/c/a$a;->a:I

    invoke-interface {p1, v0}, Lcom/instabug/featuresrequest/c/a;->a(I)V

    return-void
.end method
