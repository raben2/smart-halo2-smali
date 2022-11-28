.class public final Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;
.super Ljava/lang/Object;
.source "ViewProgressAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewProgressItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005\"\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;",
        "",
        "isSelected",
        "",
        "(Z)V",
        "()Z",
        "setSelected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private isSelected:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected:Z

    return-void
.end method


# virtual methods
.method public final isSelected()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected:Z

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected:Z

    return-void
.end method
