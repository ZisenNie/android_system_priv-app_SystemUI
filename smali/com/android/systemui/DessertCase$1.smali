.class Lcom/android/systemui/DessertCase$1;
.super Ljava/lang/Object;
.source "DessertCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DessertCase;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCase;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/DessertCase;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/DessertCase$1;->this$0:Lcom/android/systemui/DessertCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/DessertCase$1;->this$0:Lcom/android/systemui/DessertCase;

    iget-object v0, v0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->start()V

    .line 53
    return-void
.end method