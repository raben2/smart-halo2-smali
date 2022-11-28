.class public final synthetic Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Lbike/smarthalo/navigation/models/NavigationMode;

.field private final synthetic f$3:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$2:Lbike/smarthalo/navigation/models/NavigationMode;

    iput-object p4, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$3:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iput p5, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$4:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$2:Lbike/smarthalo/navigation/models/NavigationMode;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$3:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget v4, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/navigation/SHDirectionService;->lambda$initializePresentationState$7(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    return-object v0
.end method
