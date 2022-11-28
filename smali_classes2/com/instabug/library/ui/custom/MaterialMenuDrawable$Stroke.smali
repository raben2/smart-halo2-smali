.class public final enum Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;
.super Ljava/lang/Enum;
.source "MaterialMenuDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/ui/custom/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stroke"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

.field public static final enum EXTRA_THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

.field public static final enum REGULAR:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

.field public static final enum THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;


# instance fields
.field private final strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    const-string v1, "REGULAR"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->REGULAR:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    .line 5
    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    const-string v1, "THIN"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    .line 9
    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    const-string v1, "EXTRA_THIN"

    invoke-direct {v0, v1, v4, v5}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->EXTRA_THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    .line 10
    new-array v1, v2, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->REGULAR:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->$VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

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
    iput p3, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->strokeWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->strokeWidth:I

    return p0
.end method

.method protected static valueOf(I)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->REGULAR:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->EXTRA_THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->$VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    invoke-virtual {v0}, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    return-object v0
.end method
