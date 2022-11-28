.class public final Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;
.super Ljava/lang/Object;
.source "NotificationPayloads.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J&\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J&\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;",
        "",
        "()V",
        "getErrorPayload",
        "Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;",
        "notificationType",
        "Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;",
        "description",
        "",
        "callback",
        "Lbike/smarthalo/sdk/CmdCallback;",
        "getNavigationPayload",
        "getNoHaloPayload",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->INSTANCE:Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getErrorPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
    .locals 12
    .param p0    # Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/sdk/CmdCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notificationType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    .line 49
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0xed

    const/16 v3, 0xfd

    const/16 v4, 0xff

    invoke-direct {v2, v3, v1, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 50
    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v5, 0xc8

    const/16 v6, 0x32

    const/16 v7, 0x64

    const/16 v8, 0xa

    const/4 v9, 0x3

    move-object v1, v0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    .line 48
    invoke-direct/range {v1 .. v11}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-object v0
.end method

.method public static synthetic getErrorPayload$default(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;ILjava/lang/Object;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 47
    check-cast p2, Lbike/smarthalo/sdk/CmdCallback;

    :cond_1
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getErrorPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final getNavigationPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
    .locals 12
    .param p0    # Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/sdk/CmdCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notificationType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    .line 33
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0x43

    const/16 v3, 0xff

    invoke-direct {v2, v1, v3, v3}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 34
    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v5, 0xc8

    const/16 v6, 0x32

    const/16 v7, 0x64

    const/16 v8, 0xa

    const/4 v9, 0x3

    move-object v1, v0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    .line 32
    invoke-direct/range {v1 .. v11}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-object v0
.end method

.method public static synthetic getNavigationPayload$default(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;ILjava/lang/Object;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 31
    check-cast p2, Lbike/smarthalo/sdk/CmdCallback;

    :cond_1
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNavigationPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final getNoHaloPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
    .locals 12
    .param p0    # Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/sdk/CmdCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notificationType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    .line 17
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v1, 0x0

    const/16 v3, 0xdb

    const/16 v4, 0x8f

    invoke-direct {v2, v4, v3, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 18
    new-instance v5, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v5, v4, v3, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v4, 0xc8

    const/16 v6, 0x32

    const/16 v7, 0x64

    const/16 v8, 0xa

    const/4 v9, 0x3

    move-object v1, v0

    move-object v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    .line 16
    invoke-direct/range {v1 .. v11}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-object v0
.end method

.method public static synthetic getNoHaloPayload$default(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;ILjava/lang/Object;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 15
    check-cast p2, Lbike/smarthalo/sdk/CmdCallback;

    :cond_1
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNoHaloPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object p0

    return-object p0
.end method
