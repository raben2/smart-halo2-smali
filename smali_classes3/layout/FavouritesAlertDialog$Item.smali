.class public Llayout/FavouritesAlertDialog$Item;
.super Ljava/lang/Object;
.source "FavouritesAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/FavouritesAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final icon:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Llayout/FavouritesAlertDialog$Item;->text:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Llayout/FavouritesAlertDialog$Item;->icon:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Llayout/FavouritesAlertDialog$Item;->text:Ljava/lang/String;

    return-object v0
.end method
