.class final enum Lcom/instabug/library/annotation/AnnotationView$b;
.super Ljava/lang/Enum;
.source "AnnotationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/annotation/AnnotationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/annotation/AnnotationView$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum DRAG:Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum DRAW:Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum NONE:Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum RESIZE_BY_BOTTOM_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum RESIZE_BY_BOTTOM_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum RESIZE_BY_TOP_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

.field public static final enum RESIZE_BY_TOP_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->NONE:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 2
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "DRAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->DRAG:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 3
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "RESIZE_BY_TOP_LEFT_BUTTON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 4
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "RESIZE_BY_TOP_RIGHT_BUTTON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 5
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "RESIZE_BY_BOTTOM_RIGHT_BUTTON"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 6
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "RESIZE_BY_BOTTOM_LEFT_BUTTON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    .line 7
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$b;

    const-string v1, "DRAW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/instabug/library/annotation/AnnotationView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->DRAW:Lcom/instabug/library/annotation/AnnotationView$b;

    const/4 v1, 0x7

    .line 8
    new-array v1, v1, [Lcom/instabug/library/annotation/AnnotationView$b;

    sget-object v9, Lcom/instabug/library/annotation/AnnotationView$b;->NONE:Lcom/instabug/library/annotation/AnnotationView$b;

    aput-object v9, v1, v2

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$b;->DRAG:Lcom/instabug/library/annotation/AnnotationView$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_TOP_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_RIGHT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$b;->RESIZE_BY_BOTTOM_LEFT_BUTTON:Lcom/instabug/library/annotation/AnnotationView$b;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/instabug/library/annotation/AnnotationView$b;->$VALUES:[Lcom/instabug/library/annotation/AnnotationView$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/annotation/AnnotationView$b;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/annotation/AnnotationView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/annotation/AnnotationView$b;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/annotation/AnnotationView$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$b;->$VALUES:[Lcom/instabug/library/annotation/AnnotationView$b;

    invoke-virtual {v0}, [Lcom/instabug/library/annotation/AnnotationView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/annotation/AnnotationView$b;

    return-object v0
.end method
