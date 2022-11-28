.class Lcom/instabug/library/invocation/invocationdialog/f$a;
.super Ljava/lang/Object;
.source "InstabugDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/invocation/invocationdialog/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/instabug/library/R$id;->instabug_prompt_option_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/f$a;->a:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcom/instabug/library/R$id;->instabug_prompt_option_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/f$a;->b:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/instabug/library/R$id;->instabug_prompt_option_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/f$a;->c:Landroid/widget/TextView;

    return-void
.end method
