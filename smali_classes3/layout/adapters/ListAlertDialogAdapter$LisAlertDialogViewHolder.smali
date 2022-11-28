.class Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;
.super Ljava/lang/Object;
.source "ListAlertDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/ListAlertDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LisAlertDialogViewHolder"
.end annotation


# instance fields
.field itemIcon:Landroid/widget/ImageView;

.field itemText:Landroid/widget/TextView;

.field rootView:Landroid/view/View;

.field final synthetic this$0:Llayout/adapters/ListAlertDialogAdapter;


# direct methods
.method constructor <init>(Llayout/adapters/ListAlertDialogAdapter;Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->this$0:Llayout/adapters/ListAlertDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0309

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->itemText:Landroid/widget/TextView;

    const p1, 0x7f0a0308

    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->itemIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0452

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/adapters/ListAlertDialogAdapter$LisAlertDialogViewHolder;->rootView:Landroid/view/View;

    return-void
.end method
