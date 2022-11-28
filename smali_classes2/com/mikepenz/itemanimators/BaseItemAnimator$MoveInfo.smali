.class Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/itemanimators/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 65
    iput p2, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->fromX:I

    .line 66
    iput p3, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->fromY:I

    .line 67
    iput p4, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->toX:I

    .line 68
    iput p5, p0, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/mikepenz/itemanimators/BaseItemAnimator$1;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/mikepenz/itemanimators/BaseItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
