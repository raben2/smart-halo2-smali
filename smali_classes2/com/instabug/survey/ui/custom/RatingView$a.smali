.class public final enum Lcom/instabug/survey/ui/custom/RatingView$a;
.super Ljava/lang/Enum;
.source "RatingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/survey/ui/custom/RatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/survey/ui/custom/RatingView$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/survey/ui/custom/RatingView$a;

.field public static final enum Left:Lcom/instabug/survey/ui/custom/RatingView$a;

.field public static final enum Right:Lcom/instabug/survey/ui/custom/RatingView$a;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/survey/ui/custom/RatingView$a;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/instabug/survey/ui/custom/RatingView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    .line 5
    new-instance v0, Lcom/instabug/survey/ui/custom/RatingView$a;

    const-string v1, "Right"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/instabug/survey/ui/custom/RatingView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/survey/ui/custom/RatingView$a;->Right:Lcom/instabug/survey/ui/custom/RatingView$a;

    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Lcom/instabug/survey/ui/custom/RatingView$a;

    sget-object v4, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/survey/ui/custom/RatingView$a;->$VALUES:[Lcom/instabug/survey/ui/custom/RatingView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/instabug/survey/ui/custom/RatingView$a;->id:I

    return-void
.end method

.method static a(I)Lcom/instabug/survey/ui/custom/RatingView$a;
    .locals 6

    .line 1
    invoke-static {}, Lcom/instabug/survey/ui/custom/RatingView$a;->values()[Lcom/instabug/survey/ui/custom/RatingView$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget v5, v4, Lcom/instabug/survey/ui/custom/RatingView$a;->id:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Gravity chosen is neither \'left\' nor \'right\', I will set it to Left"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RatingView"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/instabug/survey/ui/custom/RatingView$a;->Left:Lcom/instabug/survey/ui/custom/RatingView$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/survey/ui/custom/RatingView$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/survey/ui/custom/RatingView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/survey/ui/custom/RatingView$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/survey/ui/custom/RatingView$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/survey/ui/custom/RatingView$a;->$VALUES:[Lcom/instabug/survey/ui/custom/RatingView$a;

    invoke-virtual {v0}, [Lcom/instabug/survey/ui/custom/RatingView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/survey/ui/custom/RatingView$a;

    return-object v0
.end method
