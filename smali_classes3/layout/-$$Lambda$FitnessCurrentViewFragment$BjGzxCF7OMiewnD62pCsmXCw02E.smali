.class public final synthetic Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/FitnessCurrentViewFragment;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Llayout/FitnessCurrentViewFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;->f$0:Llayout/FitnessCurrentViewFragment;

    iput p2, p0, Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;->f$0:Llayout/FitnessCurrentViewFragment;

    iget v1, p0, Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;->f$1:I

    invoke-static {v0, v1, p1}, Llayout/FitnessCurrentViewFragment;->lambda$setGoalListClickListeners$1(Llayout/FitnessCurrentViewFragment;ILandroid/view/View;)V

    return-void
.end method
