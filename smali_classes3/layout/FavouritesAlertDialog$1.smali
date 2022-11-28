.class final Llayout/FavouritesAlertDialog$1;
.super Landroid/widget/ArrayAdapter;
.source "FavouritesAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/FavouritesAlertDialog;->create(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Llayout/FavouritesAlertDialog$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:[Llayout/FavouritesAlertDialog$Item;


# direct methods
.method constructor <init>(Landroid/content/Context;II[Llayout/FavouritesAlertDialog$Item;[Llayout/FavouritesAlertDialog$Item;Landroid/content/Context;)V
    .locals 0

    .line 51
    iput-object p5, p0, Llayout/FavouritesAlertDialog$1;->val$items:[Llayout/FavouritesAlertDialog$Item;

    iput-object p6, p0, Llayout/FavouritesAlertDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Llayout/FavouritesAlertDialog$1;->val$items:[Llayout/FavouritesAlertDialog$Item;

    aget-object p1, v0, p1

    iget p1, p1, Llayout/FavouritesAlertDialog$Item;->icon:I

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 61
    iget-object p1, p0, Llayout/FavouritesAlertDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 62
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object p2
.end method
