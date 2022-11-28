.class public final enum Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
.super Ljava/lang/Enum;
.source "Dot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/ui/custom/pagerindicator/Dot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

.field public static final enum ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

.field public static final enum INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

.field public static final enum TRANSITIONING_TO_ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

.field public static final enum TRANSITIONING_TO_INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;


# instance fields
.field private final from:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final isStable:Z

.field private final to:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;-><init>(Ljava/lang/String;IZLcom/instabug/library/ui/custom/pagerindicator/Dot$State;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)V

    sput-object v6, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 2
    new-instance v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const-string v8, "ACTIVE"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;-><init>(Ljava/lang/String;IZLcom/instabug/library/ui/custom/pagerindicator/Dot$State;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)V

    sput-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 3
    new-instance v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v12, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const-string v8, "TRANSITIONING_TO_ACTIVE"

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v7, v1

    move-object v11, v0

    invoke-direct/range {v7 .. v12}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;-><init>(Ljava/lang/String;IZLcom/instabug/library/ui/custom/pagerindicator/Dot$State;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)V

    sput-object v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->TRANSITIONING_TO_ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 4
    new-instance v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v6, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v7, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const-string v3, "TRANSITIONING_TO_INACTIVE"

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;-><init>(Ljava/lang/String;IZLcom/instabug/library/ui/custom/pagerindicator/Dot$State;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)V

    sput-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->TRANSITIONING_TO_INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const/4 v1, 0x4

    .line 5
    new-array v1, v1, [Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    sget-object v2, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->INACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->TRANSITIONING_TO_ACTIVE:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->$VALUES:[Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLcom/instabug/library/ui/custom/pagerindicator/Dot$State;Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;",
            "Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->isStable:Z

    .line 3
    iput-object p4, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->to:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    .line 4
    iput-object p5, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->from:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->$VALUES:[Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    invoke-virtual {v0}, [Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-object v0
.end method


# virtual methods
.method public isStable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->isStable:Z

    return v0
.end method

.method public transitioningFrom()Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->from:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-object v0
.end method

.method public transitioningTo()Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;->to:Lcom/instabug/library/ui/custom/pagerindicator/Dot$State;

    return-object v0
.end method
