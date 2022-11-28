.class public final enum Lcom/instabug/survey/ui/f;
.super Ljava/lang/Enum;
.source "ViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/survey/ui/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/survey/ui/f;

.field public static final enum PARTIAL:Lcom/instabug/survey/ui/f;

.field public static final enum PRIMARY:Lcom/instabug/survey/ui/f;

.field public static final enum SECONDARY:Lcom/instabug/survey/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/survey/ui/f;

    const-string v1, "PARTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/survey/ui/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/survey/ui/f;->PARTIAL:Lcom/instabug/survey/ui/f;

    new-instance v0, Lcom/instabug/survey/ui/f;

    const-string v1, "SECONDARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/survey/ui/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/survey/ui/f;->SECONDARY:Lcom/instabug/survey/ui/f;

    new-instance v0, Lcom/instabug/survey/ui/f;

    const-string v1, "PRIMARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/survey/ui/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/survey/ui/f;

    sget-object v5, Lcom/instabug/survey/ui/f;->PARTIAL:Lcom/instabug/survey/ui/f;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/survey/ui/f;->SECONDARY:Lcom/instabug/survey/ui/f;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/survey/ui/f;->$VALUES:[Lcom/instabug/survey/ui/f;

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

.method public static a(ILcom/instabug/survey/ui/f;)Lcom/instabug/survey/ui/f;
    .locals 1

    if-lez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/instabug/survey/ui/f;->values()[Lcom/instabug/survey/ui/f;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/ui/f;->values()[Lcom/instabug/survey/ui/f;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/survey/ui/f;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/survey/ui/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/survey/ui/f;

    return-object p0
.end method

.method public static values()[Lcom/instabug/survey/ui/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/survey/ui/f;->$VALUES:[Lcom/instabug/survey/ui/f;

    invoke-virtual {v0}, [Lcom/instabug/survey/ui/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/survey/ui/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
