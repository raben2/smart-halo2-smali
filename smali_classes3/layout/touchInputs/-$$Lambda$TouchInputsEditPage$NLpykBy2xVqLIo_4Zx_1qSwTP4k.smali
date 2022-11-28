.class public final synthetic Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/touchInputs/TouchInputsEditPage;

.field private final synthetic f$1:Lbike/smarthalo/app/models/TouchInputItemType;


# direct methods
.method public synthetic constructor <init>(Llayout/touchInputs/TouchInputsEditPage;Lbike/smarthalo/app/models/TouchInputItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;->f$0:Llayout/touchInputs/TouchInputsEditPage;

    iput-object p2, p0, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;->f$1:Lbike/smarthalo/app/models/TouchInputItemType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;->f$0:Llayout/touchInputs/TouchInputsEditPage;

    iget-object v1, p0, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;->f$1:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-static {v0, v1, p1}, Llayout/touchInputs/TouchInputsEditPage;->lambda$initializeEditItem$1(Llayout/touchInputs/TouchInputsEditPage;Lbike/smarthalo/app/models/TouchInputItemType;Landroid/view/View;)V

    return-void
.end method
