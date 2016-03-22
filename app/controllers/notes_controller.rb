class NotesController < ApplicationController
    before_action :set_note, only: [:show, :edit, :update, :destroy]
    def new
        @note = Note.new
    end
    def list
        @notes = Note.all
    end
    def create
        @note = Note.new(note_params)
        if @note.save
            redirect_to list_path, notice: "投稿が保存されました"
        else
             render :new
        end
        # @note = Note.new
        # @note.content = params[:content]
        # @note.income = params[:income]
        # @note.payment = params[:payment]
        # @note.total = params[:total]
        # @note.date = params[:date]
        # @note.save
        # redirect_to list_path
    end
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to list_path
    end
   private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:content, :income, :payment, :total, :date)
    end 
end
