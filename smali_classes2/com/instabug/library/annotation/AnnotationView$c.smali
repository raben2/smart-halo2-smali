.class public final enum Lcom/instabug/library/annotation/AnnotationView$c;
.super Ljava/lang/Enum;
.source "AnnotationView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/annotation/AnnotationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/annotation/AnnotationView$c;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/annotation/AnnotationView$c;

.field public static final enum DRAW_BLUR:Lcom/instabug/library/annotation/AnnotationView$c;

.field public static final enum DRAW_CIRCLE:Lcom/instabug/library/annotation/AnnotationView$c;

.field public static final enum DRAW_PATH:Lcom/instabug/library/annotation/AnnotationView$c;

.field public static final enum DRAW_RECT:Lcom/instabug/library/annotation/AnnotationView$c;

.field public static final enum DRAW_ZOOM:Lcom/instabug/library/annotation/AnnotationView$c;

.field public static final enum NONE:Lcom/instabug/library/annotation/AnnotationView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/annotation/AnnotationView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->NONE:Lcom/instabug/library/annotation/AnnotationView$c;

    .line 2
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v1, "DRAW_PATH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/annotation/AnnotationView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_PATH:Lcom/instabug/library/annotation/AnnotationView$c;

    .line 3
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v1, "DRAW_RECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/annotation/AnnotationView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_RECT:Lcom/instabug/library/annotation/AnnotationView$c;

    .line 4
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v1, "DRAW_CIRCLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/annotation/AnnotationView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_CIRCLE:Lcom/instabug/library/annotation/AnnotationView$c;

    .line 5
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v1, "DRAW_BLUR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/library/annotation/AnnotationView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_BLUR:Lcom/instabug/library/annotation/AnnotationView$c;

    .line 6
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$c;

    const-string v1, "DRAW_ZOOM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/instabug/library/annotation/AnnotationView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_ZOOM:Lcom/instabug/library/annotation/AnnotationView$c;

    const/4 v1, 0x6

    .line 7
    new-array v1, v1, [Lcom/instabug/library/annotation/AnnotationView$c;

    sget-object v8, Lcom/instabug/library/annotation/AnnotationView$c;->NONE:Lcom/instabug/library/annotation/AnnotationView$c;

    aput-object v8, v1, v2

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_PATH:Lcom/instabug/library/annotation/AnnotationView$c;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_RECT:Lcom/instabug/library/annotation/AnnotationView$c;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_CIRCLE:Lcom/instabug/library/annotation/AnnotationView$c;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/annotation/AnnotationView$c;->DRAW_BLUR:Lcom/instabug/library/annotation/AnnotationView$c;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/instabug/library/annotation/AnnotationView$c;->$VALUES:[Lcom/instabug/library/annotation/AnnotationView$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/annotation/AnnotationView$c;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/annotation/AnnotationView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/annotation/AnnotationView$c;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/annotation/AnnotationView$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$c;->$VALUES:[Lcom/instabug/library/annotation/AnnotationView$c;

    invoke-virtual {v0}, [Lcom/instabug/library/annotation/AnnotationView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/annotation/AnnotationView$c;

    return-object v0
.end method
