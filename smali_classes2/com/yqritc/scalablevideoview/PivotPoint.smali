.class public final enum Lcom/yqritc/scalablevideoview/PivotPoint;
.super Ljava/lang/Enum;
.source "PivotPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yqritc/scalablevideoview/PivotPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 8
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "LEFT_CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 9
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "LEFT_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 10
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "CENTER_TOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 11
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "CENTER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 12
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "CENTER_BOTTOM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 13
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "RIGHT_TOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 14
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "RIGHT_CENTER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 15
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [Lcom/yqritc/scalablevideoview/PivotPoint;

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->$VALUES:[Lcom/yqritc/scalablevideoview/PivotPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yqritc/scalablevideoview/PivotPoint;
    .locals 1

    .line 6
    const-class v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yqritc/scalablevideoview/PivotPoint;

    return-object p0
.end method

.method public static values()[Lcom/yqritc/scalablevideoview/PivotPoint;
    .locals 1

    .line 6
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->$VALUES:[Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-virtual {v0}, [Lcom/yqritc/scalablevideoview/PivotPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yqritc/scalablevideoview/PivotPoint;

    return-object v0
.end method
