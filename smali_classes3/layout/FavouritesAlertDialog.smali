.class public abstract Llayout/FavouritesAlertDialog;
.super Ljava/lang/Object;
.source "FavouritesAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/FavouritesAlertDialog$Item;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Llayout/FavouritesAlertDialog;->getFavouritesOptions(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;)[Llayout/FavouritesAlertDialog$Item;

    move-result-object v5

    .line 47
    new-instance p1, Llayout/FavouritesAlertDialog$1;

    const v2, 0x1090011

    const v3, 0x1020014

    move-object v0, p1

    move-object v1, p0

    move-object v4, v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Llayout/FavouritesAlertDialog$1;-><init>(Landroid/content/Context;II[Llayout/FavouritesAlertDialog$Item;[Llayout/FavouritesAlertDialog$Item;Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFavouritesOptions(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;)[Llayout/FavouritesAlertDialog$Item;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 77
    new-array v1, v0, [Llayout/FavouritesAlertDialog$Item;

    new-instance v2, Llayout/FavouritesAlertDialog$Item;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v4

    if-eq v4, v0, :cond_0

    const v0, 0x7f11002d

    goto :goto_0

    :cond_0
    const v0, 0x7f110344

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08005c

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Llayout/FavouritesAlertDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    new-instance v0, Llayout/FavouritesAlertDialog$Item;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const v3, 0x7f11002f

    goto :goto_1

    :cond_1
    const v3, 0x7f110345

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005d

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Llayout/FavouritesAlertDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v0, v1, v4

    new-instance v0, Llayout/FavouritesAlertDialog$Item;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const p1, 0x7f110030

    goto :goto_2

    :cond_2
    const p1, 0x7f110346

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f08005f

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Llayout/FavouritesAlertDialog$Item;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v0, v1, v2

    return-object v1
.end method
